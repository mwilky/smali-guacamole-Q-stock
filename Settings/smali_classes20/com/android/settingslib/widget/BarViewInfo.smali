.class public Lcom/android/settingslib/widget/BarViewInfo;
.super Ljava/lang/Object;
.source "BarViewInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/widget/BarViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mHeight:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalizedHeight:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    iput-object p3, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/settingslib/widget/BarViewInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic lambda$compareTo$0(Lcom/android/settingslib/widget/BarViewInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/widget/BarViewInfo;)I
    .locals 1

    sget-object v0, Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settingslib/widget/BarViewInfo;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/BarViewInfo;->compareTo(Lcom/android/settingslib/widget/BarViewInfo;)I

    move-result p1

    return p1
.end method

.method getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getNormalizedHeight()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return v0
.end method

.method getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setHeight(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return-void
.end method

.method setNormalizedHeight(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return-void
.end method

.method setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
