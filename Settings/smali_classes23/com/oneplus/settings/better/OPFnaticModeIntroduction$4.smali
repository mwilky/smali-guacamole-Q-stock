.class Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;
.super Ljava/lang/Object;
.source "OPFnaticModeIntroduction.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->enableFnaticWallPapers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->access$200(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
