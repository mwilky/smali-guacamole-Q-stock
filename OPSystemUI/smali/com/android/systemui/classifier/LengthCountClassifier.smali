.class public Lcom/android/systemui/classifier/LengthCountClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "LengthCountClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 0

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lcom/android/systemui/classifier/LengthCountEvaluator;->evaluate(F)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LEN_CNT"

    return-object p0
.end method
