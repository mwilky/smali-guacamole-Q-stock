.class Lcom/android/systemui/qs/tiles/GameModeTile$3;
.super Ljava/lang/Object;
.source "GameModeTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/GameModeTile;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/GameModeTile;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/GameModeTile$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/GameModeTile;->access$200(Lcom/android/systemui/qs/tiles/GameModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/GameModeTile$3;->val$enabled:Z

    if-eqz p0, :cond_0

    const-string p0, "force-on"

    goto :goto_0

    :cond_0
    const-string p0, "force-off"

    :goto_0
    const/4 v1, -0x2

    const-string v2, "game_mode_status_manual"

    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
