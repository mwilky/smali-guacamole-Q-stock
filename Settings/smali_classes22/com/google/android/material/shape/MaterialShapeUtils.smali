.class public Lcom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/material/shape/CutCornerTreatment;

    int-to-float v1, p1

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/CutCornerTreatment;-><init>(F)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    int-to-float v1, p1

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>(F)V

    return-object v0
.end method

.method static createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;
    .locals 2

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>(F)V

    return-object v0
.end method

.method static createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    return-object v0
.end method
