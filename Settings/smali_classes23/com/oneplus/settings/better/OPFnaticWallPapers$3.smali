.class Lcom/oneplus/settings/better/OPFnaticWallPapers$3;
.super Ljava/lang/Object;
.source "OPFnaticWallPapers.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPFnaticWallPapers;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$600(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$700(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$700(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
