.class Lcom/oneplus/settings/better/OPNightMode$6;
.super Landroid/database/ContentObserver;
.source "OPNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final grayscaleUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$6;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "accessibility_display_grayscale_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode$6;->grayscaleUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode$6;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_brightness_progress"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode$6;->grayscaleUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode$6;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->access$500(Lcom/oneplus/settings/better/OPNightMode;)V

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForEffectStrength()V

    return-void
.end method
