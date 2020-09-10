.class final Lcom/android/server/display/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9

    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$3000()Z

    move-result v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pubg-fg-status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$3100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v3

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3, v0}, Lcom/android/server/display/DisplayPowerController;->access$3102(Lcom/android/server/display/DisplayPowerController;I)I

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x2bc

    if-le v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$3100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -->:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/16 v3, 0x1e

    invoke-static {v2, v1, v3}, Lcom/android/server/display/DisplayPowerController;->access$3200(Lcom/android/server/display/DisplayPowerController;II)V

    :cond_0
    goto/16 :goto_2

    :cond_1
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$3300(Lcom/android/server/display/DisplayPowerController;)I

    move-result v4

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayPowerController;->access$3402(Lcom/android/server/display/DisplayPowerController;I)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$3400(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    const/16 v3, 0x1f41

    if-ne v1, v3, :cond_4

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0xbb8

    const/16 v6, 0x140

    const/16 v7, 0x3e7

    const/16 v8, 0x64

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DIIII)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x3fe

    if-ne v0, v1, :cond_5

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    const/16 v5, 0xbb8

    const/16 v6, 0x140

    const/16 v7, 0x3e7

    const/16 v8, 0x64

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(DIIII)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$3500(Lcom/android/server/display/DisplayPowerController;Z)V

    :cond_5
    :goto_0
    goto :goto_2

    :cond_6
    const-string v0, "game_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "game_mode_close_automatic_brightness"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    if-ne v1, v3, :cond_7

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->blockLightSensorForGameMode(Z)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/AutomaticBrightnessController;->blockLightSensorForGameMode(Z)V

    :cond_8
    :goto_1
    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerController;->access$3500(Lcom/android/server/display/DisplayPowerController;Z)V

    :goto_2
    return-void
.end method
