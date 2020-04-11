.class public Lcom/android/settingslib/widget/BarChartInfo;
.super Ljava/lang/Object;
.source "BarChartInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/BarChartInfo$Builder;
    }
.end annotation


# instance fields
.field private mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

.field private final mDetails:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final mDetailsOnClickListener:Landroid/view/View$OnClickListener;

.field private final mEmptyText:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final mTitle:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/widget/BarChartInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$000(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mTitle:I

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$100(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetails:I

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$200(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mEmptyText:I

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$300(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$400(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$400(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingslib/widget/BarViewInfo;

    iput-object v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/widget/BarChartInfo$Builder;Lcom/android/settingslib/widget/BarChartInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartInfo;-><init>(Lcom/android/settingslib/widget/BarChartInfo$Builder;)V

    return-void
.end method

.method static synthetic lambda$new$0(I)[Lcom/android/settingslib/widget/BarViewInfo;
    .locals 1

    new-array v0, p0, [Lcom/android/settingslib/widget/BarViewInfo;

    return-object v0
.end method


# virtual methods
.method public getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    return-object v0
.end method

.method public getDetails()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetails:I

    return v0
.end method

.method public getDetailsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getEmptyText()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mEmptyText:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mTitle:I

    return v0
.end method

.method setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    return-void
.end method
