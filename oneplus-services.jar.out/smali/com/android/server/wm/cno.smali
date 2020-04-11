.class Lcom/android/server/wm/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/bio;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/bio;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/bio;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/cno;->this$1:Lcom/android/server/wm/bio;

    iput-object p2, p0, Lcom/android/server/wm/cno;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/cno;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/cno;->this$1:Lcom/android/server/wm/bio;

    iget-object p1, p1, Lcom/android/server/wm/bio;->this$0:Lcom/android/server/wm/wtn$zta;

    const/4 p2, 0x2

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/cno;->val$packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/cno;->val$uid:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/wtn$zta;->zta(Lcom/android/server/wm/wtn$zta;ILjava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/cno;->this$1:Lcom/android/server/wm/bio;

    iget-object p1, p1, Lcom/android/server/wm/bio;->this$0:Lcom/android/server/wm/wtn$zta;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
