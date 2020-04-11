.class Lcom/android/server/sis/zta;
.super Lcom/android/server/sis/vdb$sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sis/sis;->initInstance(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sis/sis;


# direct methods
.method constructor <init>(Lcom/android/server/sis/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sis/zta;->this$0:Lcom/android/server/sis/sis;

    invoke-direct {p0}, Lcom/android/server/sis/vdb$sis;-><init>()V

    return-void
.end method


# virtual methods
.method public Ld()V
    .locals 2

    const-string v0, "OpSlaManager"

    const-string v1, "disableSla"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sis/zta;->this$0:Lcom/android/server/sis/sis;

    invoke-static {v0}, Lcom/android/server/sis/sis;->zta(Lcom/android/server/sis/sis;)V

    iget-object v0, p0, Lcom/android/server/sis/zta;->this$0:Lcom/android/server/sis/sis;

    invoke-static {v0}, Lcom/android/server/sis/sis;->you(Lcom/android/server/sis/sis;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sis/zta;->this$0:Lcom/android/server/sis/sis;

    invoke-static {p0}, Lcom/android/server/sis/sis;->you(Lcom/android/server/sis/sis;)Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setSlaEnable(Z)V

    :cond_0
    return-void
.end method

.method public Md()V
    .locals 2

    const-string v0, "OpSlaManager"

    const-string v1, "enableSla"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sis/zta;->this$0:Lcom/android/server/sis/sis;

    invoke-static {v0}, Lcom/android/server/sis/sis;->zta(Lcom/android/server/sis/sis;)V

    iget-object v0, p0, Lcom/android/server/sis/zta;->this$0:Lcom/android/server/sis/sis;

    invoke-static {v0}, Lcom/android/server/sis/sis;->you(Lcom/android/server/sis/sis;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sis/zta;->this$0:Lcom/android/server/sis/sis;

    invoke-static {p0}, Lcom/android/server/sis/sis;->you(Lcom/android/server/sis/sis;)Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setSlaEnable(Z)V

    :cond_0
    return-void
.end method
