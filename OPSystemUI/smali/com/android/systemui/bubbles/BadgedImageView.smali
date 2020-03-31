.class public Lcom/android/systemui/bubbles/BadgedImageView;
.super Landroid/widget/ImageView;
.source "BadgedImageView.java"


# instance fields
.field private mDotRenderer:Lcom/android/systemui/bubbles/BadgeRenderer;

.field private mDotScale:F

.field private mIconSize:I

.field private mOnLeft:Z

.field private mShowUpdateDot:Z

.field private mTempBounds:Landroid/graphics/Rect;

.field private mTempPoint:Landroid/graphics/Point;

.field private mUpdateDotColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempPoint:Landroid/graphics/Point;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mIconSize:I

    new-instance p2, Lcom/android/systemui/bubbles/BadgeRenderer;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/systemui/bubbles/BadgeRenderer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/systemui/bubbles/BadgeRenderer;

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p2, 0x0

    const p3, 0x10104e2

    aput p3, p0, p2

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDotPosition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    return p0
.end method

.method public isShowingDot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mShowUpdateDot:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mShowUpdateDot:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/systemui/bubbles/BadgeRenderer;

    iget v5, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mUpdateDotColor:I

    iget-object v6, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    iget-object v8, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempPoint:Landroid/graphics/Point;

    iget-boolean v9, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/bubbles/BadgeRenderer;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLandroid/graphics/Point;Z)V

    :cond_0
    return-void
.end method

.method public setDotColor(I)V
    .locals 1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mUpdateDotColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDotPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDotScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setShowDot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mShowUpdateDot:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
