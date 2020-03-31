.class Lcom/oneplus/support/viewpager/widget/PagerTabStrip$1;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/viewpager/widget/PagerTabStrip;


# direct methods
.method constructor <init>(Lcom/oneplus/support/viewpager/widget/PagerTabStrip;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/PagerTabStrip$1;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/PagerTabStrip$1;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTabStrip;

    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/PagerTitleStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
