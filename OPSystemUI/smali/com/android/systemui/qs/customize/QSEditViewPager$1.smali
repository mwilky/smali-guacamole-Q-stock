.class Lcom/android/systemui/qs/customize/QSEditViewPager$1;
.super Ljava/lang/Object;
.source "QSEditViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSEditViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSEditViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditViewPager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lcom/android/systemui/qs/customize/QSEditViewPager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-static {p3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->access$000(Lcom/android/systemui/qs/customize/QSEditViewPager;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditViewPager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->access$000(Lcom/android/systemui/qs/customize/QSEditViewPager;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object p0

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
