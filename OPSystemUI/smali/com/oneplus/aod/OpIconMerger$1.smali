.class Lcom/oneplus/aod/OpIconMerger$1;
.super Ljava/lang/Object;
.source "OpIconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpIconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpIconMerger;

.field final synthetic val$moreRequired:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpIconMerger;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpIconMerger$1;->this$0:Lcom/oneplus/aod/OpIconMerger;

    iput-boolean p2, p0, Lcom/oneplus/aod/OpIconMerger$1;->val$moreRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpIconMerger$1;->this$0:Lcom/oneplus/aod/OpIconMerger;

    invoke-static {v0}, Lcom/oneplus/aod/OpIconMerger;->access$000(Lcom/oneplus/aod/OpIconMerger;)Landroid/view/View;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oneplus/aod/OpIconMerger$1;->val$moreRequired:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
