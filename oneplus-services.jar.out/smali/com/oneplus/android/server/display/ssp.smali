.class Lcom/oneplus/android/server/display/ssp;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/ssp;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "op_gamut_game_mode"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "screen_color_mode_advanced_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "screen_color_mode_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "oem_screen_better_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v4

    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/ssp;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/display/ssp;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p2

    invoke-static {p1, v2, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/ssp;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$400(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/dma;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->L(I)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/display/ssp;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->setCustomColorTemperature()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/ssp;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    :cond_5
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x563eaf93 -> :sswitch_3
        0xf66fb82 -> :sswitch_2
        0x51621985 -> :sswitch_1
        0x638a4825 -> :sswitch_0
    .end sparse-switch
.end method
