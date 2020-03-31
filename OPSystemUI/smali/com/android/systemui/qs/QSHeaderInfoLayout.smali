.class public final Lcom/android/systemui/qs/QSHeaderInfoLayout;
.super Landroid/widget/FrameLayout;
.source "QSHeaderInfoLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
    }
.end annotation


# instance fields
.field private alarmContainer:Landroid/view/View;

.field private final location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

.field private ringerContainer:Landroid/view/View;

.field private statusSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final layoutView(Landroid/view/View;IIIZ)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p2, p4, v1, p5}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->setLocationFromOffset(IIIZ)V

    iget-object p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->getLeft()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->getRight()I

    move-result p0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p0, p3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->alarm_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.alarm_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->ringer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.ringer_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->status_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.status_separator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    const-string v1, "statusSeparator"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    sub-int p2, p4, p2

    sub-int p3, p5, p3

    const/4 p1, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-eqz v5, :cond_3

    const/4 v8, 0x0

    move-object v4, p0

    move v6, p2

    move v7, p3

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    move-result p4

    add-int/2addr p1, p4

    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v4, p0

    move v6, p2

    move v7, p3

    move v8, p1

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    move-result p4

    add-int/2addr p4, p1

    iget-object p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    move p5, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    :goto_0
    return-void

    :cond_1
    const-string p0, "ringerContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p0, "alarmContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    const-string v2, "statusSeparator"

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    const-string v4, "alarmContainer"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    const-string v6, "ringerContainer"

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int/2addr v7, v2

    div-int/lit8 v2, v7, 0x2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    sub-int/2addr v7, v0

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-ge v5, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    sub-int/2addr v7, v5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v0, v4, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    :cond_4
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
