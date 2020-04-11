.class Lcom/oneplus/android/server/zta/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/zta/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/zta/sis;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/zta/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/zta/you;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/zta/you;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-static {v0}, Lcom/oneplus/android/server/zta/sis;->sis(Lcom/oneplus/android/server/zta/sis;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/zta/you;->this$0:Lcom/oneplus/android/server/zta/sis;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/android/server/zta/sis;->you(Lcom/oneplus/android/server/zta/sis;Z)Z

    iget-object v0, p0, Lcom/oneplus/android/server/zta/you;->this$0:Lcom/oneplus/android/server/zta/sis;

    invoke-static {v0}, Lcom/oneplus/android/server/zta/sis;->zta(Lcom/oneplus/android/server/zta/sis;)V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
