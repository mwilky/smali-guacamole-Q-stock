.class Lcom/android/systemui/assist/AssistOrbView$4;
.super Landroid/view/ViewOutlineProvider;
.source "AssistOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistOrbView;->access$500(Lcom/android/systemui/assist/AssistOrbView;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistOrbView;->access$600(Lcom/android/systemui/assist/AssistOrbView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistOrbView;->access$700(Lcom/android/systemui/assist/AssistOrbView;)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
