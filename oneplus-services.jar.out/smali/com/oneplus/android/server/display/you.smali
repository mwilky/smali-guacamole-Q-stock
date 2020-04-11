.class Lcom/oneplus/android/server/display/you;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/tsu;->updateAutoAssertiveDisplayStatus(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/tsu;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    invoke-static {v0}, Lcom/oneplus/android/server/display/tsu;->you(Lcom/oneplus/android/server/display/tsu;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    invoke-static {v2}, Lcom/oneplus/android/server/display/tsu;->sis(Lcom/oneplus/android/server/display/tsu;)Lsis/you/you/zta/zta/you;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v2, v3, v0}, Lsis/you/you/zta/zta/you;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpAssertiveDisplayManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    invoke-static {v2, v0}, Lcom/oneplus/android/server/display/tsu;->you(Lcom/oneplus/android/server/display/tsu;Z)Z

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    invoke-static {p0, v1}, Lcom/oneplus/android/server/display/tsu;->sis(Lcom/oneplus/android/server/display/tsu;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    invoke-static {p1}, Lcom/oneplus/android/server/display/tsu;->zta(Lcom/oneplus/android/server/display/tsu;)F

    move-result p1

    const p2, 0x46ea6000    # 30000.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "assertivedisplay  mGlobaAmbientLux > 30000 :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    invoke-static {p0}, Lcom/oneplus/android/server/display/tsu;->zta(Lcom/oneplus/android/server/display/tsu;)F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAssertiveDisplayManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/you;->this$0:Lcom/oneplus/android/server/display/tsu;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/tsu;->zta(Lcom/oneplus/android/server/display/tsu;Z)Z

    :goto_0
    return-void
.end method
