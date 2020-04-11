.class final Lcom/android/server/wm/les$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/les;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/les;


# direct methods
.method constructor <init>(Lcom/android/server/wm/les;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/les$zta;->this$0:Lcom/android/server/wm/les;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/les$zta;->this$0:Lcom/android/server/wm/les;

    invoke-static {p0}, Lcom/android/server/wm/les;->sis(Lcom/android/server/wm/les;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/les$zta;->this$0:Lcom/android/server/wm/les;

    invoke-static {p0}, Lcom/android/server/wm/les;->you(Lcom/android/server/wm/les;)V

    :goto_0
    return-void
.end method
