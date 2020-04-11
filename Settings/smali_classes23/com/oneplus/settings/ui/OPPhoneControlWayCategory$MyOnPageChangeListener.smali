.class public Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPPhoneControlWayCategory.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

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

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$900(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$600(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$700(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$800(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$800(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$600(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$700(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$900(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$700(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$600(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$800(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$900(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$600(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$700(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$800(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$900(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$600(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$700(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$800(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$900(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$1002(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;I)I

    return-void
.end method
