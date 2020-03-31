.class public Lcom/android/systemui/classifier/AnglesClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/AnglesClassifier$Data;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static final VERBOSE:Z


# instance fields
.field private mStrokeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/classifier/Stroke;",
            "Lcom/android/systemui/classifier/AnglesClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "debug.falsing_log.ang"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    const-string v0, "ANG"

    sput-object v0, Lcom/android/systemui/classifier/AnglesClassifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/classifier/AnglesClassifier;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance()F

    move-result p2

    invoke-static {p2, p1}, Lcom/android/systemui/classifier/AnglesVarianceEvaluator;->evaluate(FI)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesPercentage()F

    move-result p0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/AnglesPercentageEvaluator;->evaluate(FI)F

    move-result p0

    add-float/2addr p2, p0

    return p2
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/classifier/AnglesClassifier;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/classifier/ClassifierData;->getStroke(I)Lcom/android/systemui/classifier/Stroke;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-direct {v3}, Lcom/android/systemui/classifier/AnglesClassifier$Data;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v2, v1}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->addPoint(Lcom/android/systemui/classifier/Point;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
