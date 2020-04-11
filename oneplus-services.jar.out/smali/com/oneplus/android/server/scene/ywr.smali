.class Lcom/oneplus/android/server/scene/ywr;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/qbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/qbh;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/qbh;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ywr;->this$0:Lcom/oneplus/android/server/scene/qbh;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ywr;->this$0:Lcom/oneplus/android/server/scene/qbh;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/qbh;->W(I)V

    return-void
.end method
