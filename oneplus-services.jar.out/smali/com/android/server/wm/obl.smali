.class Lcom/android/server/wm/obl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/cgv;->notifyImeShow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BV:Ljava/lang/String;

.field final synthetic CV:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/server/wm/cgv;


# direct methods
.method constructor <init>(Lcom/android/server/wm/cgv;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    iput-object p2, p0, Lcom/android/server/wm/obl;->BV:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/obl;->CV:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {v0}, Lcom/android/server/wm/cgv;->zta(Lcom/android/server/wm/cgv;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {v1}, Lcom/android/server/wm/cgv;->zta(Lcom/android/server/wm/cgv;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x50d00be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {v0}, Lcom/android/server/wm/cgv;->you(Lcom/android/server/wm/cgv;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/obl;->BV:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/obl;->CV:Ljava/lang/Integer;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {v1}, Lcom/android/server/wm/cgv;->you(Lcom/android/server/wm/cgv;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {v1}, Lcom/android/server/wm/cgv;->you(Lcom/android/server/wm/cgv;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {v0}, Lcom/android/server/wm/cgv;->you(Lcom/android/server/wm/cgv;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImeShow save record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpQuickReply"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/obl;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {p0}, Lcom/android/server/wm/cgv;->zta(Lcom/android/server/wm/cgv;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "quickreply_ime_unsupported"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
