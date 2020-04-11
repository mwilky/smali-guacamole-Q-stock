.class Lcom/android/server/engineer/bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/bio;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/bio;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->you(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/qbh;->you(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/engineer/bio;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->ssp(Lcom/android/server/engineer/OneplusEngineerService;)V

    :cond_0
    return-void
.end method
