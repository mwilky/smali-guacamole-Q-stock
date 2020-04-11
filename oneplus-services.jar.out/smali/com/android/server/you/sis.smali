.class Lcom/android/server/you/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/you/wtn$zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/you/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/you/tsu;


# direct methods
.method constructor <init>(Lcom/android/server/you/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/sis;->this$0:Lcom/android/server/you/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public kth()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/you/sis;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p0}, Lcom/android/server/you/tsu;->zta(Lcom/android/server/you/tsu;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public o()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/you/sis;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p0}, Lcom/android/server/you/tsu;->zta(Lcom/android/server/you/tsu;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
