.class Lcom/android/server/wm/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/gck$zta;->oif(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iR:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/gck$zta;


# direct methods
.method constructor <init>(Lcom/android/server/wm/gck$zta;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/wtn;->this$0:Lcom/android/server/wm/gck$zta;

    iput-object p2, p0, Lcom/android/server/wm/wtn;->iR:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/wtn;->iR:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/wtn;->this$0:Lcom/android/server/wm/gck$zta;

    invoke-static {v0}, Lcom/android/server/wm/gck$zta;->zta(Lcom/android/server/wm/gck$zta;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/wtn;->iR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
