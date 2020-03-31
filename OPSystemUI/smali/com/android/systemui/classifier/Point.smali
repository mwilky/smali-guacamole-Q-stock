.class public Lcom/android/systemui/classifier/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public timeOffsetNano:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/classifier/Point;->x:F

    iput p2, p0, Lcom/android/systemui/classifier/Point;->y:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/classifier/Point;->x:F

    iput p2, p0, Lcom/android/systemui/classifier/Point;->y:F

    iput-wide p3, p0, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    return-void
.end method


# virtual methods
.method public crossProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .locals 3

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v2, p2, Lcom/android/systemui/classifier/Point;->y:F

    iget p0, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v2, p0

    mul-float/2addr v0, v2

    iget p1, p1, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr p1, p0

    iget p0, p2, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr p0, v1

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method public dist(Lcom/android/systemui/classifier/Point;)F
    .locals 2

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget p0, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public dotProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .locals 3

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v2, p2, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iget p1, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget p0, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr p1, p0

    iget p2, p2, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public equals(Lcom/android/systemui/classifier/Point;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p1, Lcom/android/systemui/classifier/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/classifier/Point;->y:F

    iget p1, p1, Lcom/android/systemui/classifier/Point;->y:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/classifier/Point;->crossProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/classifier/Point;->dotProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, -0x40800000    # -1.0f

    div-float/2addr p0, v0

    div-float/2addr p0, v1

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p1, v2

    const-wide/16 v0, 0x0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_1

    const p1, 0x40c90fdb

    sub-float p0, p1, p0

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v2
.end method
