.class Lcom/android/server/you/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/you/wtn;->you(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/you/wtn;


# direct methods
.method constructor <init>(Lcom/android/server/you/wtn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/cno;->this$0:Lcom/android/server/you/wtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/you/cno;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p1}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$zta;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/you/cno;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p0}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$zta;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/you/wtn$zta;->kth()V

    :cond_0
    return-void
.end method
