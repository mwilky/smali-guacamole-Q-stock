.class Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransformationListenerWrapper"
.end annotation


# instance fields
.field private final listener:Lcom/google/android/material/animation/TransformationListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/animation/TransformationListener<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/animation/TransformationListener;)V
    .locals 0
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/animation/TransformationListener<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lcom/google/android/material/animation/TransformationListener;->onScaleChanged(Landroid/view/View;)V

    return-void
.end method

.method public onTranslationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lcom/google/android/material/animation/TransformationListener;->onTranslationChanged(Landroid/view/View;)V

    return-void
.end method
