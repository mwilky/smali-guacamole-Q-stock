.class Lcom/oneplus/android/server/scene/lqr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/veq;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/android/server/scene/veq;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/veq;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/lqr;->this$1:Lcom/oneplus/android/server/scene/veq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/lqr;->this$1:Lcom/oneplus/android/server/scene/veq;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/veq;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/cgv;->sis(Lcom/oneplus/android/server/scene/cgv;)Lcom/oneplus/android/server/scene/vju;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/vju;->s()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneGameModePanel"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
