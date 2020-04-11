.class Lcom/oneplus/android/server/scene/obl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/cgv;->frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/cgv;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/cgv;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/obl;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/obl;->this$0:Lcom/oneplus/android/server/scene/cgv;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/cgv;->sis(Lcom/oneplus/android/server/scene/cgv;)Lcom/oneplus/android/server/scene/vju;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/obl;->this$0:Lcom/oneplus/android/server/scene/cgv;

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

    :cond_0
    :goto_0
    return-void
.end method
