.class Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
    .locals 2

    iget-object p0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v0, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    iget v1, p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    iget v0, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget v1, p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget p2, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    iget p3, p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    check-cast p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->evaluate(FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    move-result-object p0

    return-object p0
.end method
