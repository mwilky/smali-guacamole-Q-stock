.class final Lcom/android/server/wm/cgv$sis;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/cgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/cgv;


# direct methods
.method constructor <init>(Lcom/android/server/wm/cgv;Lcom/android/server/wm/cgv$zta;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/cgv$sis;->this$0:Lcom/android/server/wm/cgv;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/wm/cgv;->zta(Lcom/android/server/wm/cgv;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_quickreply_im_list"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p2, "op_quickreply_ime_adjust"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/cgv$sis;->this$0:Lcom/android/server/wm/cgv;

    invoke-static {p0}, Lcom/android/server/wm/cgv;->ywr(Lcom/android/server/wm/cgv;)V

    return-void
.end method
