.class Lcom/android/server/wm/OPAppSwitchManagerService$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OPAppSwitchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->this$0:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    const-string v0, "OPAppSwitchManagerService"

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->this$0:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$300(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$400()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "registerContentObserver on settings got exception..."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->update(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "update for all uris got exception..."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver onChange uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$400()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->this$0:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$300(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const/4 v3, 0x0

    const-string v4, "oem_splash_ads_enable"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {p1, v2}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$502(Lcom/android/server/wm/OPAppSwitchManagerService;Z)Z

    :cond_2
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$602(Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appid"

    const-string v2, "7554P2RV0X"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->this$0:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v2}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$500(Lcom/android/server/wm/OPAppSwitchManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    goto :goto_1

    :cond_3
    const-string v2, "0"

    :goto_1
    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$600()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "COMMIT_TO_MDM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$600()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->this$0:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$300(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "splash_switch"

    invoke-virtual {v1, p0, v2, v0, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_5
    return-void
.end method
