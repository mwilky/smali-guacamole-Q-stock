.class Lcom/oneplus/android/server/sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/sis;->this$0:Lcom/oneplus/android/server/tsu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/android/server/tsu;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/tsu;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/sis;->this$0:Lcom/oneplus/android/server/tsu;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/android/server/tsu$zta;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/tsu;->zta(Lcom/oneplus/android/server/tsu;Lcom/oneplus/android/server/tsu$zta;)V

    :goto_0
    return-void
.end method
