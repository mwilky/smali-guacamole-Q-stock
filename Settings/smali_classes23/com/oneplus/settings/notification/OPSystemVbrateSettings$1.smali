.class Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;
.super Landroid/os/Handler;
.source "OPSystemVbrateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSystemVbrateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->access$000(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->access$100(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)I

    move-result v2

    const-string v3, "vibrate_on_touch_intensity"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :goto_0
    return-void
.end method
