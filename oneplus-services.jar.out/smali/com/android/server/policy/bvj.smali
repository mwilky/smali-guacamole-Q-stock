.class Lcom/android/server/policy/bvj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpPhoneWindowManager;->notifyLidSwitchChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gG:Z

.field final synthetic this$0:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/bvj;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/bvj;->gG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/server/policy/bvj;->gG:Z

    const-string v2, "lidOpen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/bvj;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
