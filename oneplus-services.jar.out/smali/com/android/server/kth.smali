.class Lcom/android/server/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusExService;->bootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusExService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/kth;->this$0:Lcom/android/server/OnePlusExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusExService"

    const-string v1, "[scene] bootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/kth;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v0}, Lcom/android/server/OnePlusExService;->access$300(Lcom/android/server/OnePlusExService;)Lcom/oneplus/android/server/scene/ivd;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/kth;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v0}, Lcom/android/server/OnePlusExService;->access$400(Lcom/android/server/OnePlusExService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/android/server/scene/ivd;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/ivd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OnePlusExService;->access$302(Lcom/android/server/OnePlusExService;Lcom/oneplus/android/server/scene/ivd;)Lcom/oneplus/android/server/scene/ivd;

    :cond_1
    iget-object v0, p0, Lcom/android/server/kth;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v0}, Lcom/android/server/OnePlusExService;->access$300(Lcom/android/server/OnePlusExService;)Lcom/oneplus/android/server/scene/ivd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/ivd;->bootComplete()V

    iget-object p0, p0, Lcom/android/server/kth;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {p0}, Lcom/android/server/OnePlusExService;->access$300(Lcom/android/server/OnePlusExService;)Lcom/oneplus/android/server/scene/ivd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/ivd;->startMonitor()V

    return-void
.end method
