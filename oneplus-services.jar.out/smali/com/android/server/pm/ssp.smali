.class Lcom/android/server/pm/ssp;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/cno;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/pm/cno;


# direct methods
.method constructor <init>(Lcom/android/server/pm/cno;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ssp;->this$2:Lcom/android/server/pm/cno;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/ssp;->this$2:Lcom/android/server/pm/cno;

    iget-object p0, p0, Lcom/android/server/pm/cno;->this$1:Lcom/android/server/pm/kth;

    iget-object p0, p0, Lcom/android/server/pm/kth;->this$0:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-static {p0}, Lcom/android/server/pm/OpLauncherAppsService;->access$100(Lcom/android/server/pm/OpLauncherAppsService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, "Reset parallel app feature"

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
