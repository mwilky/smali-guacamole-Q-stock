.class Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dataSetChanged()V

    return-void
.end method
