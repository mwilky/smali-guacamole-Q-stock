.class public final Lcom/android/systemui/assist/ui/EdgeLight;
.super Ljava/lang/Object;
.source "EdgeLight.java"


# instance fields
.field private mColor:I

.field private mLength:F

.field private mOffset:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    iput p3, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return p0
.end method

.method public getLength()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return p0
.end method

.method public getOffset()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return p0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return-void
.end method

.method public setLength(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public setOffset(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return-void
.end method
