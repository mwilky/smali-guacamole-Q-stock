.class Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;
.super Landroid/view/OrientationEventListener;
.source "OpThreekeyNavigationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$000(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrientType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {v0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$002(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;I)I

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$200(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$300(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method
