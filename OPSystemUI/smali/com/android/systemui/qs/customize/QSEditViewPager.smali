.class public Lcom/android/systemui/qs/customize/QSEditViewPager;
.super Lcom/android/systemui/qs/customize/RtlViewPager;
.source "QSEditViewPager.java"


# instance fields
.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/qs/customize/QSEditViewPager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSEditViewPager$1;-><init>(Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/RtlViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSEditViewPager;)Lcom/android/systemui/qs/PageIndicator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object p0
.end method


# virtual methods
.method public setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-void
.end method

.method public updateIndicator()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
