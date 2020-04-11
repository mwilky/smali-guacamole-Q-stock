.class final Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateChangeReceiver"
.end annotation


# static fields
.field private static final TOGGLE_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$RequestPermissionActivity$StateChangeReceiver$q4ZilZjRzY7SLoogXiJIIa__yMA;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$RequestPermissionActivity$StateChangeReceiver$q4ZilZjRzY7SLoogXiJIIa__yMA;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$RequestPermissionActivity$StateChangeReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$200(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$000(Lcom/android/settings/bluetooth/RequestPermissionActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    :cond_3
    :goto_0
    return-void
.end method
