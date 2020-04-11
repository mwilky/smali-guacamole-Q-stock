.class Lcom/oneplus/android/server/obl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/vdb$tsu;->rtg(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/android/server/vdb$tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/vdb$tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/obl;->this$1:Lcom/oneplus/android/server/vdb$tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/obl;->this$1:Lcom/oneplus/android/server/vdb$tsu;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb$tsu;->zta(Lcom/oneplus/android/server/vdb$tsu;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/vdb$tsu;->zta(Lcom/oneplus/android/server/vdb$tsu;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
