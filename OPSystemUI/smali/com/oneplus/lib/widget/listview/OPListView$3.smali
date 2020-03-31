.class Lcom/oneplus/lib/widget/listview/OPListView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/listview/OPListView;->startDelDropAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/listview/OPListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/listview/OPListView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$800(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p1}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView$3;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method
