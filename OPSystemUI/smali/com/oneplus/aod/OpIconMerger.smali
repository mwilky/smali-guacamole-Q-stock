.class public Lcom/oneplus/aod/OpIconMerger;
.super Landroid/widget/LinearLayout;
.source "OpIconMerger.java"


# instance fields
.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpIconMerger;->reloadDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpIconMerger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpIconMerger;->mMoreView:Landroid/view/View;

    return-object p0
.end method

.method private checkOverflow(I)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/OpIconMerger;->mMoreView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpIconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/aod/OpIconMerger;->getFullIconWidth()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v3, p1, :cond_4

    move v1, v2

    :cond_4
    if-eq v1, v0, :cond_5

    new-instance p1, Lcom/oneplus/aod/OpIconMerger$1;

    invoke-direct {p1, p0, v1}, Lcom/oneplus/aod/OpIconMerger$1;-><init>(Lcom/oneplus/aod/OpIconMerger;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private getFullIconWidth()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/OpIconMerger;->mIconSize:I

    iget p0, p0, Lcom/oneplus/aod/OpIconMerger;->mIconHPadding:I

    add-int/2addr v0, p0

    return v0
.end method

.method private reloadDimens()V
    .locals 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_notification_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OpIconMerger;->mIconSize:I

    sget v1, Lcom/android/systemui/R$dimen;->aod_notification_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpIconMerger;->mIconHPadding:I

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpIconMerger;->reloadDimens()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    invoke-direct {p0, p4}, Lcom/oneplus/aod/OpIconMerger;->checkOverflow(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
