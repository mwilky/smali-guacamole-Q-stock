.class Lcom/android/systemui/pip/tv/PipControlsView$5;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/tv/PipControlsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$300(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$400(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView$5;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$400(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/pip/tv/PipControlsView$Listener;->onClosed()V

    :cond_0
    return-void
.end method
